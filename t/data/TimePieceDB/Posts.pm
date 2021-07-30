package # private package
    TimePieceDB::Posts;

use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components(qw/PK::Auto Core/);
__PACKAGE__->table('user_posts');
__PACKAGE__->add_columns(
    id => {
        data_type         => 'int',
        is_nullable       => 0,
        is_auto_increment => 0,
    },
    user_id => {
        data_type   => 'int',
        is_nullable => 0,
    },
    post_title => {
        data_type   => 'varchar',
        size        => 45,
        is_nullable => 1,
    },
);

__PACKAGE__->set_primary_key( 'id' );

__PACKAGE__->belongs_to( author => 'TimePieceDB::TestUser' => { 'foreign.id' => 'self.user_id' } );

1;

