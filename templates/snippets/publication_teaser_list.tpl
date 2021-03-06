
{*---------------------------------------------------------------------------*}

<div class="publication-teaser-list">
{if not isset($group) or not $group}
{for $i=0; $i < $publication.count; $i++}
	{include "templates/snippets/publication_teaser.tpl" publication=$publication.rows[$i]}
{/for}
{else}
	{assign var=curgrp value=-1}
	{for $i=0; $i < $publication.count; $i++}
		{assign var=pub value=$publication.rows[$i]}
		{if $group and $pub.publication_year != $curgrp and isset($pub.publication_year) and !empty($pub.publication_year)}
			{include "templates/snippets/section_title.tpl" title="{$pub.publication_year}"}
			{$curgrp = $pub.publication_year}
		{/if}
		{if isset($pub.publication_year) and !empty($pub.publication_year)}
			{include "templates/snippets/publication_teaser.tpl" publication=$pub}
		{/if}
	{/for}
	{include "templates/snippets/section_title.tpl" title={t s='unknown' m=0}}
	{for $i=0; $i < $publication.count; $i++}
		{assign var=pub value=$publication.rows[$i]}
		{if !isset($pub.publication_year) or empty($pub.publication_year)}
			{include "templates/snippets/publication_teaser.tpl" publication=$pub}
		{/if}
	{/for}
{/if}
</div>

{*---------------------------------------------------------------------------*}
