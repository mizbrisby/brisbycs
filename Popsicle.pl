#!/usr/bin/perl
use 5.16.0;
use warnings;

use Data::Dump qw/dump/;

{
    package Student;

    sub new {
        my ($class, $args) = @_;
        return bless $args, $class;
    }
    sub name { return $_->{name} }
    sub grade { return $_->{grade} }
}
{
    package Popsicle;
    use Data::Dump qw/dump/;

    sub new {
        my ($class, $args) = @_;
        return bless $args, $class;
    }

    sub stickers {
        return shift->{stickers};
    }
    sub flavor {
        return shift->{flavor};
    }
    sub student {
        return shift->{student};
    }
    sub count_stickers {
        return scalar @{shift->stickers};
    }

    sub add_sticker {
        my ($self, $sticker) = @_;
        push @{$self->stickers}, $sticker;
    }

    sub eat { my ($self) = @_; say "YUM!"; }
}

my $student = Student->new( {name => "Charlie", grade => "kindergarten" });

my $stickers = [ 'bat-man-sticker', 'apple-sticker', 'sparkle-sticker'];

my $flavor = 'Apple';

my $popsicle = Popsicle->new({ creator => $student, flavor => $flavor, stickers => $stickers });

# count all the stickers
dump $popsicle->stickers;
dump $popsicle->count_stickers;

# add a sticker
$popsicle->add_sticker("awesome sticker");

dump $popsicle->stickers;
dump $popsicle->count_stickers;

dump sort {$a cmp $b}  @{$popsicle->stickers};

$popsicle->eat;
