<li class="media">
    <div class="media-left">
        % if 'type' in post.keys():
            % if post['type'] == 'video':
                % if 'object_id' in post.keys():
                    <iframe src="https://www.facebook.com/video/embed?video_id={{post['object_id']}}\" frameborder=\"0\"></iframe>
                % end
            % end
            % if 'full_picture' in post.keys() and post['type'] != 'video':
                <a href="{{post['full_picture']}}" target="_blank"><img src="{{post['picture']}}" alt="{{post['id']}}"></a>
            % end
        % end
    </div>
    <div class="media-body">
        %if 'name' in post.keys():
            <h3><span class="label label-success">{{post['name']}}</span></h3>
            % if 'message' in post.keys():
                <p><strong>Message:</strong> {{post['message']}}</p>
            % end
        % end
        %if 'name' not in post.keys():
            % if 'message' in post.keys():
                <h3><span class="label label-success">{{post['message'].split('.')[0]}}</span></h3>
                <p><strong>Message:</strong> {{post['message']}}</p>
            % end
        % end
        <a href="https://www.facebook.com/{{post['id']}}/">
          <h4 class="media-heading">{{post['name'] if 'name' in post.keys() else 'Unnamed post' }}</h4>
          % if 'message' in post.keys():
          <p>{{post['message']}}</p>
          % end
          <p>{{post['shares']}} shares {{post['likes']}} likes {{post['comments']}} comments</p>
          <p><i class="glyphicon glyphicon-time"></i><span class="badge">{{post['updated_time']}}</span>
        </a>
    </div>
</li>