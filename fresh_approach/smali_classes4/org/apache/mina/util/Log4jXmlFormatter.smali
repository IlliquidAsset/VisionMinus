.class public Lorg/apache/mina/util/Log4jXmlFormatter;
.super Ljava/util/logging/Formatter;
.source "Log4jXmlFormatter.java"


# instance fields
.field private final DEFAULT_SIZE:I

.field private final UPPER_LIMIT:I

.field private buf:Ljava/lang/StringBuffer;

.field private locationInfo:Z

.field private properties:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    const/16 v0, 0x100

    .line 49
    iput v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->DEFAULT_SIZE:I

    const/16 v1, 0x800

    .line 51
    iput v1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->UPPER_LIMIT:I

    .line 53
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    .line 57
    iput-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 7

    .line 101
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x800

    if-le v0, v2, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 106
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "<log4j:event logger=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "\" timestamp=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 110
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "\" level=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "\" thread=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "\">\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "<log4j:message><![CDATA["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/mina/util/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "]]></log4j:message>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 124
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/mina/util/Transform;->getThrowableStrRep(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v2, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v3, "<log4j:throwable><![CDATA["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 128
    iget-object v5, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-static {v5, v4}, Lorg/apache/mina/util/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 129
    iget-object v4, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "]]></log4j:throwable>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :cond_2
    iget-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "<log4j:locationInfo class=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v2, "\" method=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    iget-object p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v0, "\" file=\"?\" line=\"?\"/>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_3
    iget-boolean p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    if-eqz p1, :cond_7

    .line 144
    invoke-static {}, Lorg/slf4j/MDC;->getCopyOfContextMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 147
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 149
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 150
    iget-object v2, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v3, "<log4j:properties>\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 152
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 154
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    if-nez v3, :cond_4

    const-string v3, ""

    goto :goto_3

    .line 155
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    :goto_3
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 159
    iget-object v5, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v6, "<log4j:data name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v5, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-static {v3}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v3, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v5, "\" value=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    iget-object v3, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/mina/util/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget-object v3, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v4, "\"/>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    :cond_6
    iget-object p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v0, "</log4j:properties>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_7
    iget-object p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    const-string v0, "</log4j:event>\r\n\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLocationInfo()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    return v0
.end method

.method public getProperties()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    return v0
.end method

.method public setLocationInfo(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->locationInfo:Z

    return-void
.end method

.method public setProperties(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lorg/apache/mina/util/Log4jXmlFormatter;->properties:Z

    return-void
.end method
