<li class="list-group-item">
    % if 'name' in post.keys():
        <h3><span class="label label-success">{{post['name']}}</span></h3>
        <p><strong>Post id - </strong>{{post['id']}}</p>
        % if 'message' in post.keys():
            <p><strong>Message:</strong> {{post['message']}}</p>
        % end
    % end
    %if 'name' not in post.keys():
        % if 'message' in post.keys():
            <h3><span class="label label-success">{{post['message'].split('.')[0]}}</span></h3>
        % end
        <p><strong>Post id - </strong>{{post['id']}}</p>
    % end

    % if 'shares' in post.keys():
        <p>Total shares <span class="badge">{{post['shares']}}</span></p>
    % end
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
    <p><i class="glyphicon glyphicon-time"></i> Last modified <span class="badge">{{post['updated_time']}}</span>
    </p>
</li>