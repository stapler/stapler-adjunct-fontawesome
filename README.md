Stapler Adjunct for [Font Awesome](http://fortawesome.github.com/Font-Awesome/)
=========================

To include fontawesome, add the module as a Maven dependency:

    <dependency>
        <groupId>org.kohsuke.stapler</groupId>
        <artifactId>stapler-adjunct-fontawesome</artifactId>
        <version>...</version>
    </dependency>

And then include the following adjunct in your page:

    <!-- for Jelly view -->
    <st:adjunct includes="org.kohsuke.stapler.fontawesome"/>

    <!-- for Groovy view -->
    <% adjunct 'org.kohsuke.stapler.fontawesome' %>
