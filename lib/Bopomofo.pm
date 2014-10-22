package Bopomofo;

use strict;
use utf8;
use warnings;

require Exporter;

our @ISA = qw(Exporter);

#Copyright (c) 2004 Jason Toy (朱仲光)  <toy@cpan.org>
#This module is under the BSD license


# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Bopomofo ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

our $VERSION = '0.21';


# Preloaded methods go here.

our %Map;

sub bopo_to_pin {
    my ($text) = @_;
    $text =~ s/(\S)/ defined $Map{$1} ? $Map{$1} : $1; /eg;
    return $text;
}

%Map =
('ㄚ' => 'a', 'ㄞ' => 'ai', 'ㄢ' => 'an', 
'ㄤ' => 'ang', 'ㄠ' => 'ao', 'ㄅㄚ' => 'ba', 
'ㄅㄞ' => 'bai', 'ㄅㄢ' => 'ban', 'ㄅㄤ' => 'bang', 
'ㄅㄠ' => 'bao', 'ㄅㄟ' => 'bei', 'ㄅㄣ' => 'ben', 
'ㄅㄥ' => 'beng', 'ㄅㄧ' => 'bi', 'ㄅㄧㄢ' => 'bian', 
'ㄅㄧㄠ' => 'biao', 'ㄅㄧㄝ' => 'bie', 'ㄅㄧㄣ' => 'bin', 
'ㄅㄧㄥ' => 'bing', 'ㄅㄛ' => 'bo', 'ㄅㄨ' => 'bu', 
'ㄘㄚ' => 'ca', 'ㄘㄞ' => 'cai', 'ㄘㄢ' => 'can', 
'ㄘㄤ' => 'cang', 'ㄘㄠ' => 'cao', 'ㄘㄜ' => 'ce', 
'ㄘㄣ' => 'cen', 'ㄘㄥ' => 'ceng', 'ㄔㄚ' => 'cha', 
'ㄔㄞ' => 'chai', 'ㄔㄢ' => 'chan', 'ㄔㄤ' => 'chang', 
'ㄔㄠ' => 'chao', 'ㄔㄜ' => 'che', 'ㄔㄣ' => 'chen', 
'ㄔㄥ' => 'cheng', 'ㄔ' => 'chi', 'ㄔㄨㄥ' => 'chong', 
'ㄔㄡ' => 'chou', 'ㄔㄨ' => 'chu', 'ㄔㄨㄞ' => 'chuai', 
'ㄔㄨㄢ' => 'chuan', 'ㄔㄨㄤ' => 'chuang', 'ㄔㄨㄟ' => 'chui', 
'ㄔㄨㄣ' => 'chun', 'ㄔㄨㄛ' => 'chuo', 'ㄘ' => 'ci', 
'ㄘㄨㄥ' => 'cong', 'ㄘㄨ' => 'cu', 'ㄘㄨㄢ' => 'cuan', 
'ㄘㄨㄟ' => 'cui', 'ㄘㄨㄣ' => 'cun', 'ㄘㄨㄛ' => 'cuo', 
'ㄉㄚ' => 'da', 'ㄉㄞ' => 'dai', 'ㄉㄢ' => 'dan', 
'ㄉㄤ' => 'dang', 'ㄉㄠ' => 'dao', 'ㄉㄜ' => 'de', 
'ㄉㄟ' => 'dei', 'ㄉㄥ' => 'deng', 'ㄉㄧ' => 'di', 
'ㄉㄧㄢ' => 'dian', 'ㄉㄧㄠ' => 'diao', 'ㄉㄧㄝ' => 'die', 
'ㄉㄧㄥ' => 'ding', 'ㄉㄧㄡ' => 'diu', 'ㄉㄨㄥ' => 'dong', 
'ㄉㄡ' => 'dou', 'ㄉㄨ' => 'du', 'ㄉㄨㄢ' => 'duan', 
'ㄉㄨㄟ' => 'dui', 'ㄉㄨㄣ' => 'dun', 'ㄉㄨㄛ' => 'duo', 
'ㄝ' => 'e', 'ㄜ' => 'e', 'ㄟ' => 'ei', 
'ㄣ' => 'en', 'ㄥ' => 'eng', 'ㄦ' => 'er', 
'ㄈㄚ' => 'fa', 'ㄈㄢ' => 'fan', 'ㄈㄤ' => 'fang', 
'ㄈㄟ' => 'fei', 'ㄈㄣ' => 'fen', 'ㄈㄥ' => 'feng', 
'ㄈㄛ' => 'fo', 'ㄈㄡ' => 'fou', 'ㄈㄨ' => 'fu', 
'ㄍㄚ' => 'ga', 'ㄍㄞ' => 'gai', 'ㄍㄢ' => 'gan', 
'ㄍㄤ' => 'gang', 'ㄍㄠ' => 'gao', 'ㄍㄜ' => 'ge', 
'ㄍㄟ' => 'gei', 'ㄍㄣ' => 'gen', 'ㄍㄥ' => 'geng', 
'ㄍㄨㄥ' => 'gong', 'ㄍㄡ' => 'gou', 'ㄍㄨ' => 'gu', 
'ㄍㄨㄚ' => 'gua', 'ㄍㄨㄞ' => 'guai', 'ㄍㄨㄢ' => 'guan', 
'ㄍㄨㄤ' => 'guang', 'ㄍㄨㄟ' => 'gui', 'ㄍㄨㄣ' => 'gun', 
'ㄍㄨㄛ' => 'guo', 'ㄏㄚ' => 'ha', 'ㄏㄞ' => 'hai', 
'ㄏㄢ' => 'han', 'ㄏㄤ' => 'hang', 'ㄏㄠ' => 'hao', 
'ㄏㄜ' => 'he', 'ㄏㄟ' => 'hei', 'ㄏㄣ' => 'hen', 
'ㄏㄥ' => 'heng', 'ㄏㄨㄥ' => 'hong', 'ㄏㄡ' => 'hou', 
'ㄏㄨ' => 'hu', 'ㄏㄨㄚ' => 'hua', 'ㄏㄨㄞ' => 'huai', 
'ㄏㄨㄢ' => 'huan', 'ㄏㄨㄤ' => 'huang', 'ㄏㄨㄟ' => 'hui', 
'ㄏㄨㄣ' => 'hun', 'ㄏㄨㄛ' => 'huo', 'ㄐㄧ' => 'ji', 
'ㄐㄧㄚ' => 'jia', 'ㄐㄧㄢ' => 'jian', 'ㄐㄧㄤ' => 'jiang', 
'ㄐㄧㄠ' => 'jiao', 'ㄐㄧㄝ' => 'jie', 'ㄐㄧㄣ' => 'jin', 
'ㄐㄧㄥ' => 'jing', 'ㄐㄩㄥ' => 'jiong', 'ㄐㄧㄡ' => 'jiu', 
'ㄐㄩ' => 'ju', 'ㄐㄩㄢ' => 'juan', 'ㄐㄩㄝ' => 'jue', 
'ㄐㄩㄣ' => 'jun', 'ㄎㄚ' => 'ka', 'ㄎㄞ' => 'kai', 
'ㄎㄢ' => 'kan', 'ㄎㄤ' => 'kang', 'ㄎㄠ' => 'kao', 
'ㄎㄜ' => 'ke', 'ㄎㄣ' => 'ken', 'ㄎㄥ' => 'keng', 
'ㄎㄨㄥ' => 'kong', 'ㄎㄡ' => 'kou', 'ㄎㄨ' => 'ku', 
'ㄎㄨㄚ' => 'kua', 'ㄎㄨㄞ' => 'kuai', 'ㄎㄨㄢ' => 'kuan', 
'ㄎㄨㄤ' => 'kuang', 'ㄎㄨㄟ' => 'kui', 'ㄎㄨㄣ' => 'kun', 
'ㄎㄨㄛ' => 'kuo', 'ㄌㄚ' => 'la', 'ㄌㄞ' => 'lai', 
'ㄌㄢ' => 'lan', 'ㄌㄤ' => 'lang', 'ㄌㄠ' => 'lao', 
'ㄌㄜ' => 'le', 'ㄌㄟ' => 'lei', 'ㄌㄥ' => 'leng', 
'ㄌㄧ' => 'li', 'ㄌㄧㄚ' => 'lia', 'ㄌㄧㄢ' => 'lian', 
'ㄌㄧㄤ' => 'liang', 'ㄌㄧㄠ' => 'liao', 'ㄌㄧㄝ' => 'lie', 
'ㄌㄧㄣ' => 'lin', 'ㄌㄧㄥ' => 'ling', 'ㄌㄧㄡ' => 'liu', 
'ㄌㄨㄥ' => 'long', 'ㄌㄡ' => 'lou', 'ㄌㄨ' => 'lu', 
'ㄌㄨㄢ' => 'luan', 'ㄌㄩㄝ' => 'lue:', 'ㄌㄨㄣ' => 'lun', 
'ㄌㄨㄛ' => 'luo', 'ㄇㄚ' => 'ma', 'ㄇㄞ' => 'mai', 
'ㄇㄢ' => 'man', 'ㄇㄤ' => 'mang', 'ㄇㄠ' => 'mao', 
'ㄇㄟ' => 'mei', 'ㄇㄣ' => 'men', 'ㄇㄥ' => 'meng', 
'ㄇㄧ' => 'mi', 'ㄇㄧㄢ' => 'mian', 'ㄇㄧㄠ' => 'miao', 
'ㄇㄧㄝ' => 'mie', 'ㄇㄧㄣ' => 'min', 'ㄇㄧㄥ' => 'ming', 
'ㄇㄧㄡ' => 'miu', 'ㄇㄛ' => 'mo', 'ㄇㄡ' => 'mou', 
'ㄇㄨ' => 'mu', 'ㄋㄚ' => 'na', 'ㄋㄞ' => 'nai', 
'ㄋㄢ' => 'nan', 'ㄋㄤ' => 'nang', 'ㄋㄠ' => 'nao', 
'ㄋㄟ' => 'nei', 'ㄋㄥ' => 'neng', 'ㄋㄧ' => 'ni', 
'ㄋㄧㄢ' => 'nian', 'ㄋㄧㄤ' => 'niang', 'ㄋㄧㄠ' => 'niao', 
'ㄋㄧㄝ' => 'nie', 'ㄋㄧㄣ' => 'nin', 'ㄋㄧㄥ' => 'ning', 
'ㄋㄧㄡ' => 'niu', 'ㄋㄨㄥ' => 'nong', 'ㄋㄨㄡ' => 'nou', 
'ㄋㄨ' => 'nu', 'ㄋㄩ' => 'nu:', 'ㄋㄨㄢ' => 'nuan', 
'ㄋㄩㄝ' => 'nue:', 'ㄋㄨㄛ' => 'nuo', 'ㄡ' => 'ou', 
'ㄆㄚ' => 'pa', 'ㄆㄞ' => 'pai', 'ㄆㄢ' => 'pan', 
'ㄆㄤ' => 'pang', 'ㄆㄠ' => 'pao', 'ㄆㄟ' => 'pei', 
'ㄆㄣ' => 'pen', 'ㄆㄥ' => 'peng', 'ㄆㄧ' => 'pi', 
'ㄆㄧㄢ' => 'pian', 'ㄆㄧㄠ' => 'piao', 'ㄆㄧㄝ' => 'pie', 
'ㄆㄧㄣ' => 'pin', 'ㄆㄧㄥ' => 'ping', 'ㄆㄛ' => 'po', 
'ㄆㄡ' => 'pou', 'ㄆㄨ' => 'pu', 'ㄑㄧ' => 'qi', 
'ㄑㄧㄚ' => 'qia', 'ㄑㄧㄢ' => 'qian', 'ㄑㄧㄤ' => 'qiang', 
'ㄑㄧㄠ' => 'qiao', 'ㄑㄧㄝ' => 'qie', 'ㄑㄧㄣ' => 'qin', 
'ㄑㄧㄥ' => 'qing', 'ㄑㄩㄥ' => 'qiong', 'ㄑㄧㄡ' => 'qiu', 
'ㄑㄩ' => 'qu', 'ㄑㄩㄢ' => 'quan', 'ㄑㄩㄝ' => 'que', 
'ㄑㄩㄣ' => 'qun', 'ㄖㄢ' => 'ran', 'ㄖㄤ' => 'rang', 
'ㄖㄠ' => 'rao', 'ㄖㄜ' => 're', 'ㄖㄣ' => 'ren', 
'ㄖㄥ' => 'reng', 'ㄖ' => 'ri', 'ㄖㄨㄥ' => 'rong', 
'ㄖㄡ' => 'rou', 'ㄖㄨ' => 'ru', 'ㄖㄨㄢ' => 'ruan', 
'ㄖㄨㄟ' => 'rui', 'ㄖㄨㄣ' => 'run', 'ㄖㄨㄛ' => 'ruo', 
'ㄙㄚ' => 'sa', 'ㄙㄞ' => 'sai', 'ㄙㄢ' => 'san', 
'ㄙㄤ' => 'sang', 'ㄙㄠ' => 'sao', 'ㄙㄜ' => 'se', 
'ㄙㄣ' => 'sen', 'ㄙㄥ' => 'seng', 'ㄕㄚ' => 'sha', 
'ㄕㄞ' => 'shai', 'ㄕㄢ' => 'shan', 'ㄕㄤ' => 'shang', 
'ㄕㄠ' => 'shao', 'ㄕㄜ' => 'she', 'ㄕㄟ' => 'shei', 
'ㄕㄣ' => 'shen', 'ㄕㄥ' => 'sheng', 'ㄕ' => 'shi', 
'ㄕㄡ' => 'shou', 'ㄕㄨ' => 'shu', 'ㄕㄨㄚ' => 'shua', 
'ㄕㄨㄞ' => 'shuai', 'ㄕㄨㄢ' => 'shuan', 'ㄕㄨㄤ' => 'shuang', 
'ㄕㄨㄟ' => 'shui', 'ㄕㄨㄣ' => 'shun', 'ㄕㄨㄛ' => 'shuo', 
'ㄙ' => 'si', 'ㄙㄨㄥ' => 'song', 'ㄙㄡ' => 'sou', 
'ㄙㄨ' => 'su', 'ㄙㄨㄢ' => 'suan', 'ㄙㄨㄟ' => 'sui', 
'ㄙㄨㄣ' => 'sun', 'ㄙㄨㄛ' => 'suo', 'ㄉㄚ' => 'ta', 
'ㄊㄞ' => 'tai', 'ㄊㄢ' => 'tan', 'ㄊㄤ' => 'tang', 
'ㄊㄠ' => 'tao', 'ㄊㄜ' => 'te', 'ㄊㄥ' => 'teng', 
'ㄊㄧ' => 'ti', 'ㄊㄧㄢ' => 'tian', 'ㄊㄧㄠ' => 'tiao', 
'ㄊㄧㄝ' => 'tie', 'ㄊㄧㄥ' => 'ting', 'ㄊㄨㄥ' => 'tong', 
'ㄊㄡ' => 'tou', 'ㄊㄨ' => 'tu', 'ㄊㄨㄢ' => 'tuan', 
'ㄊㄨㄟ' => 'tui', 'ㄊㄨㄣ' => 'tun', 'ㄊㄨㄛ' => 'tuo', 
'ㄨㄚ' => 'wa', 'ㄨㄞ' => 'wai', 'ㄨㄢ' => 'wan', 
'ㄨㄤ' => 'wang', 'ㄨㄟ' => 'wei', 'ㄨㄣ' => 'wen', 
'ㄨㄥ' => 'weng', 'ㄨㄛ' => 'wo', 'ㄨ' => 'wu', 
'ㄒㄧ' => 'xi', 'ㄒㄧㄚ' => 'xia', 'ㄒㄧㄢ' => 'xian', 
'ㄒㄧㄤ' => 'xiang', 'ㄒㄧㄠ' => 'xiao', 'ㄒㄧㄝ' => 'xie', 
'ㄒㄧㄣ' => 'xin', 'ㄒㄧㄥ' => 'xing', 'ㄒㄩㄥ' => 'xiong', 
'ㄒㄧㄡ' => 'xiu', 'ㄒㄩ' => 'xu', 'ㄒㄩㄢ' => 'xuan', 
'ㄒㄩㄝ' => 'xue', 'ㄒㄩㄣ' => 'xun', 'ㄧㄚ' => 'ya', 
'ㄧㄢ' => 'yan', 'ㄧㄤ' => 'yang', 'ㄧㄠ' => 'yao', 
'ㄧㄝ' => 'ye', 'ㄧ' => 'yi', 'ㄧㄣ' => 'yin', 
'ㄧㄥ' => 'ying', 'ㄩㄥ' => 'yong', 'ㄧㄡ' => 'you', 
'ㄩ' => 'yu', 'ㄩㄢ' => 'yuan', 'ㄩㄝ' => 'yue', 
'ㄩㄣ' => 'yun', 'ㄗㄚ' => 'za', 'ㄗㄞ' => 'zai', 
'ㄗㄢ' => 'zan', 'ㄗㄤ' => 'zang', 'ㄗㄠ' => 'zao', 
'ㄗㄜ' => 'ze', 'ㄗㄟ' => 'zei', 'ㄗㄣ' => 'zen', 
'ㄗㄥ' => 'zeng', 'ㄓㄚ' => 'zha', 'ㄓㄞ' => 'zhai', 
'ㄓㄢ' => 'zhan', 'ㄓㄤ' => 'zhang', 'ㄓㄠ' => 'zhao', 
'ㄓㄜ' => 'zhe', 'ㄓㄣ' => 'zhen', 'ㄓㄥ' => 'zheng', 
'ㄓ' => 'zhi', 'ㄓㄨㄥ' => 'zhong', 'ㄓㄡ' => 'zhou', 
'ㄓㄨ' => 'zhu', 'ㄓㄨㄚ' => 'zhua', 'ㄓㄨㄞ' => 'zhuai', 
'ㄓㄨㄢ' => 'zhuan', 'ㄓㄨㄤ' => 'zhuang', 'ㄓㄨㄟ' => 'zhui', 
'ㄓㄨㄣ' => 'zhun', 'ㄓㄨㄛ' => 'zhuo', 'ㄗ' => 'zi', 
'ㄗㄨㄥ' => 'zong', 'ㄗㄡ' => 'zou', 'ㄗㄨ' => 'zu', 
'ㄗㄨㄢ' => 'zuan', 'ㄗㄨㄟ' => 'zui', 'ㄗㄨㄣ' => 'zun', 
'ㄗㄨㄛ' => 'zuo', );

1;
__END__

=head1 NAME

Bopomofo - Perl extension for converting Chinese both ways between pinyin and bopomofo

=head1 SYNOPSIS

  use Bopomofo;
  my $pinyin = bopo_to_pin($bopo);

=head1 METHODS

=over 4

=item C<bopo_to_pin($text)>

A map of pinyin sounds to Taiwanese bopomofo (zhuyin) sounds. 

=head2 EXPORT

None by default.



=head1 SEE ALSO

http://jtoy.net/program/perl

http://jtoy.net/cpan/cpan.html

=head1 AUTHOR

Jason Toy (朱仲光) E<lt>toy@cpan.gE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2004 by Jason Toy (�仲光) . This is licensed under the BSD license.

=cut
