.class public Lorg/slf4j/impl/AndroidLogger;
.super Lorg/slf4j/helpers/MarkerIgnoringBase;
.source "AndroidLogger.java"


# static fields
.field private static final serialVersionUID:J = -0x110827acc929f301L


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/slf4j/helpers/MarkerIgnoringBase;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    return-void
.end method

.method private format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 259
    invoke-static {p1, p2, p3}, Lorg/slf4j/helpers/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 270
    invoke-static {p1, p2}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object p1

    invoke-virtual {p1}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 217
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 181
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/slf4j/impl/AndroidLogger;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/slf4j/impl/AndroidLogger;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
