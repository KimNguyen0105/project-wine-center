<footer>
    <section class="wine-footer">
        <h5>{{$labels[17]->name}}</h5>
        <p class="slogan">{!! $labels[18]->name !!}
        </p>
        <ul>
            <li><a href="{{$config->facebook_link}}" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="{{$config->twiter_link}}" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="{{$config->googleplus_link}}" target="_blank"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            <li><a href="{{$config->linked_link}}" target="_blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
            <li><a href="{{$config->youtube_link}}" target="_blank"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
        </ul>
        <p class="reserved">{{$labels[19]->name}}</p>
    </section>

</footer>