@foreach($user_permission as $item)
<li><a href="{{URL::asset('')}}/{{$item->link}}"><i class="fa fa-bug"></i> {{$item->permission}}</a>
</li>
@endforeach