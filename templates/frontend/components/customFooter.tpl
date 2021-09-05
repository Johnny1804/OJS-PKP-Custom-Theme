

	</div><!-- pkp_structure_main -->

    <div class="custom-sidebar">
	    {* Sidebars *}
		{if empty($isFullWidth)}
		    {capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
			{if $sidebarCode}
			    <div class="pkp_structure_sidebar right hide" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				   {$sidebarCode}            
				</div><!-- pkp_sidebar.right -->
			{/if}
		{/if}
		<div class="sidebar-content">
	        <a>Right Sidebar Content</a>
		</div>
	</div>
</div><!-- pkp_structure_content -->

<div class="pkp_structure_footer_wrapper" role="contentinfo">
	<a id="pkp_content_footer"></a>

	<div class="pkp_structure_footer">

		{if $pageFooter}
			<div class="pkp_footer_content">
				{$pageFooter}
			</div>
		{/if}

		<div class="pkp_brand_footer" role="complementary">
			<a href="{url page="about" op="aboutThisPublishingSystem"}">
				<img alt="{translate key="about.aboutThisPublishingSystem"}" src="{$baseUrl}/{$brandImage}">
			</a>
		</div>
	</div>
</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
</body>
</html>