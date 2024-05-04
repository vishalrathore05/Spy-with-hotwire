class Spy < ApplicationRecord
     after_create_commit { broadcast_append_to('spies', target: 'spies', locals: { spy: self }) }
end
