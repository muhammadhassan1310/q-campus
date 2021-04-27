<?php

namespace App\Http\Controllers\Class_routine;

use App\Http\Requests\Academic\Subject\AddValidation;
use App\Http\Requests\Academic\Subject\EditValidation;
use App\Models\ClassRoutine;
use App\Models\Day;
use App\Models\Semester;
use App\Models\Staff;
use App\Models\Subject;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Http\Controllers\CollegeBaseController;

class ClassRoutineController extends CollegeBaseController
{

    protected $base_route = 'routine';
    protected $view_path = 'class_routine.routine';
    protected $panel = 'Semester / Class Routine';
    protected $filter_query = [];


    public function __construct()
    {

    }

    public function index()
    {
        $data = [];

        $data['routine'] = ClassRoutine::select('class_routines.id as id', 'sm.semester as semester', 'sub.title as subject', 'class_routines.class_type as class_type', 'day.title as day',
            'class_routines.start_date as date', 'class_routines.start_time as start_time', 'class_routines.end_date', 'class_routines.end_time as end_time')
            ->join('semesters as sm','sm.id','=','class_routines.semester')
            ->join('subjects as sub','sub.id','=','class_routines.subject')
            ->join('days as day','day.id','=','class_routines.day')
            ->orderBy('class_routines.semester')
            ->get();

        $data['staffs'] = [];
        $data['staffs'][] = 'Select Teacher';
        foreach (Staff::select('id','first_name','middle_name','last_name')->Active()->get() as $staff) {
            $data['staffs'][$staff->id] = $staff->first_name.' '.$staff->middle_name.' '.$staff->last_name ;
        }

        foreach (Subject::select('id','title', 'code')->Active()->get() as $subjects) {
            $data['add_subjects'][$subjects->id] = $subjects->code.' - '.$subjects->title ;
        }

        foreach (Semester::select('id','semester')->Active()->get() as $semester) {
            $data['add_semester'][$semester->id] = $semester->semester ;
        }
        foreach (Day::select('id','title')->Active()->get() as $day) {
            $data['add_days'][$day->id] = $day->title ;
        }
        return view(parent::loadDataToView($this->view_path.'.index'), compact('data'));
    }

    public function store(Request $request)
    {
        $request->request->add(['created_by' => auth()->user()->id]);
        $ClassRoutine = ClassRoutine::create($request->all());

        $request->session()->flash($this->message_success, $this->panel. 'Created Successfully.');
        return redirect()->route($this->base_route);
    }

    public function edit($id)
    {

        $data = [];
        if (!$data['row'] = ClassRoutine::find($id))
            return parent::invalidRequest();

        $data['routine'] = ClassRoutine::select('class_routines.id as id', 'sm.semester as semester', 'sub.title as subject', 'class_routines.class_type as class_type', 'day.title as day',
            'class_routines.start_date as date', 'class_routines.start_time as start_time', 'class_routines.end_date', 'class_routines.end_time as end_time')
            ->join('semesters as sm','sm.id','=','class_routines.semester')
            ->join('subjects as sub','sub.id','=','class_routines.subject')
            ->join('days as day','day.id','=','class_routines.day')
            ->orderBy('class_routines.semester')
            ->get();

        $data['staffs'] = [];
        $data['staffs'][] = 'Select Teacher';
        foreach (Staff::select('id','first_name','middle_name','last_name')->Active()->get() as $staff) {
            $data['staffs'][$staff->id] = $staff->first_name.' '.$staff->middle_name.' '.$staff->last_name ;
        }

        foreach (Subject::select('id','title', 'code')->Active()->get() as $subjects) {
            $data['add_subjects'][$subjects->id] = $subjects->code.' - '.$subjects->title ;
        }

        foreach (Semester::select('id','semester')->Active()->get() as $semester) {
            $data['add_semester'][$semester->id] = $semester->semester ;
        }
        foreach (Day::select('id','title')->Active()->get() as $day) {
            $data['add_days'][$day->id] = $day->title ;
        }

        $data['base_route'] = $this->base_route;
        return view(parent::loadDataToView($this->view_path.'.index'), compact('data'));
    }

    public function update(Request $request, $id)
    {
        if (!$row = ClassRoutine::find($id)) return parent::invalidRequest();
        $request->request->add(['last_updated_by' => auth()->user()->id]);
        $ClassRoutine = $row->update($request->all());
        $request->session()->flash($this->message_success, $this->panel.' Updated Successfully.');
        return redirect()->route($this->base_route);
    }

    public function delete(Request $request, $id)
    {
        if (!$row = ClassRoutine::find($id)) return parent::invalidRequest();

        $row->delete();

        $request->session()->flash($this->message_success, $this->panel.' Deleted Successfully.');
        return redirect()->route($this->base_route);
    }

    public function bulkAction(Request $request)
    {
        if ($request->has('bulk_action') && in_array($request->get('bulk_action'), ['delete'])) {

            if ($request->has('chkIds')) {
                foreach ($request->get('chkIds') as $row_id) {
                    switch ($request->get('bulk_action')) {
                        case 'delete':
                            $row = ClassRoutine::find($row_id);
                            $row->delete();
                            break;
                    }
                }

                if ($request->get('bulk_action') == 'delete')
                    $request->session()->flash($this->message_success, 'Deleted successfully.');


                return redirect()->route($this->base_route);

            } else {
                $request->session()->flash($this->message_warning, 'Please, Check at least one row.');
                return redirect()->route($this->base_route);
            }

        } else return parent::invalidRequest();

    }
}
