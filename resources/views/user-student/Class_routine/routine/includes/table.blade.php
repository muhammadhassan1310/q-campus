<div class="row">
    <div class="col-xs-12">
        @include($view_path.'/Class_routine.routine.includes.data_table_header')
        <!-- div.table-responsive -->
        <div class="table-responsive">
            <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <th class="center">
                        <label class="pos-rel">
                            <input type="checkbox" class="ace" />
                            <span class="lbl"></span>
                        </label>
                    </th>
                    <th>S.N.</th>
                    <th>{{ $panel }}</th>
                    <th>Subject</th>
                    <th>Class Type</th>
                    <th>Day</th>
                    <th>Start Time</th>
                    <th>End Time</th>
                </tr>
                </thead>
                <tbody>
                @if (isset($data['routine']) && $data['routine']->count() > 0)
                    @php($i=1)
                    @foreach($data['routine'] as $routine)
                        <tr>
                            <td class="center first-child">
                                <label>
                                    <input type="checkbox" name="chkIds[]" value="{{ $routine->id }}" class="ace" />
                                    <span class="lbl"></span>
                                </label>
                            </td>
                            <td>{{ $i }}</td>
                            <td>
                                <div class="label label-primary arrowed-right arrowed-in">
                                    {{ $routine->semester }}
                                </div>
                            </td>
                            <td>
                                <div class="label label-primary arrowed-right arrowed-in">
                                    {{ $routine->subject }}
                                </div>
                            </td>
                            <td>
                                <div class="label label-primary arrowed-right arrowed-in">
                                    {{ $routine->class_type }}
                                </div>
                            </td>
                            <td>
                                <div class="label label-primary arrowed-right arrowed-in">
                                    {{ $routine->day }}
                                </div>
                            </td>
                            <td>
                                <div class="label label-primary arrowed-right arrowed-in">
                                    {{ date('g:i A', strtotime($routine->start_time)) }}
                                </div>
                            </td>
                            <td>
                                <div class="label label-primary arrowed-right arrowed-in">
                                    {{ date('g:i A', strtotime($routine->end_time)) }}
                                </div>
                            </td>
                        </tr>
                        @php($i++)
                    @endforeach
                @else
                    <tr>
                        <td colspan="10">No {{ $panel }} data found.</td>
                    </tr>
                @endif
                </tbody>
            </table>
        </div>
    </div>
</div>