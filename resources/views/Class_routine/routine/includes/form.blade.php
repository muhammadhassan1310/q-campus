
<div class="form-group">
    {!! Form::label('semester', 'Class / Semester', ['class' => 'col-sm-3 control-label']) !!}
    <div class="col-sm-9">
        {!! Form::select('semester',$data['add_semester'], null, ["class" => "form-control border-form","required"]) !!}
        @include('includes.form_fields_validation_message', ['name' => 'semester'])
    </div>
</div>


<div class="form-group">
    {!! Form::label('subject', 'Subject', ['class' => 'col-sm-3 control-label']) !!}
    <div class="col-sm-9">
        {!! Form::select('subject',$data['add_subjects'], null, ["class" => "form-control border-form","required"]) !!}
        @include('includes.form_fields_validation_message', ['name' => 'subject'])
    </div>
</div>


<div class="form-group">
    {!! Form::label('class_type', 'Class Type', ['class' => 'col-sm-4 control-label']) !!}
    <div class="col-sm-8">
        {!! Form::select('class_type',['Theory'=>'Theory','Practical'=>'Practical','Both'=>'Both'], null, ["class" => "form-control border-form","required"]) !!}
        @include('includes.form_fields_validation_message', ['name' => 'class_type'])
    </div>
</div>


<div class="form-group">
    {!! Form::label('day', 'Day', ['class' => 'col-sm-3 control-label']) !!}
    <div class="col-sm-9">
        {!! Form::select('day',$data['add_days'], null, ["class" => "form-control border-form","required"]) !!}
        @include('includes.form_fields_validation_message', ['name' => 'day'])
    </div>
</div>
<div class="form-group">
    {!! Form::label('start_time', 'Start Time', ['class' => 'col-sm-3 control-label']) !!}
    <div class="col-sm-9">
        {!! Form::time('start_time', null, ["class" => "form-control border-form","required"]) !!}
        @include('includes.form_fields_validation_message', ['name' => 'start_time'])
    </div>
</div>
<div class="form-group">
    {!! Form::label('end_time', 'End Time', ['class' => 'col-sm-3 control-label']) !!}
    <div class="col-sm-9">
        {!! Form::time('end_time', null, ["class" => "form-control border-form","required"]) !!}
        @include('includes.form_fields_validation_message', ['name' => 'end_time'])
    </div>
</div>