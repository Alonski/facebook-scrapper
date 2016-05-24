% rebase('templates/base.tpl', title=title)

% for post in post_list:
    % page_name = ''
    % for page in page_list:
        % if page_id == page['id']:
            % page_name = page['name']
    % end
% end
<h1>{{page_name}} {{title}}</h1>
<ul class="list-group">
    % for post in post_list:
        % if 'message' in post.keys() and 'shares' in post.keys():
            <li class="list-group-item">
                <p><strong>Post id - </strong>{{post['id']}}</p>
                <p><strong>Message</strong></p>
                <p> {{post['message']}}</p>
                <p>Total shares <span class="badge">{{post['shares']}}</span></p>
                <p><i class="glyphicon glyphicon-time"></i> Last modified <span class="badge">{{post['updated_time']}}</span>
                </p>
            </li>
        % end
    % end
</ul>
