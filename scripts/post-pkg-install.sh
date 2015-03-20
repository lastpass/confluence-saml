#!/bin/sh
ATLASSIAN_HOME=/opt/atlassian/confluence

echo "Fixing up classpath..."
mv $ATLASSIAN_HOME/confluence/WEB-INF/lib/joda-time-2.3.jar $ATLASSIAN_HOME/atlassian-confluence/WEB-INF/lib/joda-time-2.3.jar.orig 2>/dev/null || :
