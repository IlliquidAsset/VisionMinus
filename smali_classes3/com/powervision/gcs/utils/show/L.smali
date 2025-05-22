.class public Lcom/powervision/gcs/utils/show/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static final A:C = 'A'

.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field private static final BOTTOM_LEFT_CORNER:C = '\u255a'

.field private static final D:C = 'D'

.field private static final DOUBLE_DIVIDER:Ljava/lang/String; = "\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field private static final E:C = 'E'

.field private static final HORIZONTAL_DOUBLE_LINE:C = '\u2551'

.field private static final I:C = 'I'

.field static JSON_INDENT:I = 0x0

.field static LINE_SEPARATOR:Ljava/lang/String; = null

.field private static final M:C = 'M'

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final MIDDLE_CORNER:C = '\u255f'

.field private static final SINGLE_DIVIDER:Ljava/lang/String; = "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final TAG:Ljava/lang/String; = "lyy"

.field private static final TOP_BORDER:Ljava/lang/String; = "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

.field private static final TOP_LEFT_CORNER:C = '\u2554'

.field private static final V:C = 'V'

.field private static final W:C = 'W'

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powervision/gcs/utils/show/L;->LINE_SEPARATOR:Ljava/lang/String;

    const/4 v0, 0x4

    .line 34
    sput v0, Lcom/powervision/gcs/utils/show/L;->JSON_INDENT:I

    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 172
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 173
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs d([Ljava/lang/String;)V
    .locals 1

    .line 120
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x44

    .line 121
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/show/L;->printLog(C[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 156
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 182
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs e([Ljava/lang/String;)V
    .locals 1

    .line 130
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    .line 131
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/show/L;->printLog(C[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 141
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 167
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs i([Ljava/lang/String;)V
    .locals 1

    .line 115
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x49

    .line 116
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/show/L;->printLog(C[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    .line 91
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "{"

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    sget v1, Lcom/powervision/gcs/utils/show/L;->JSON_INDENT:I

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "["

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 99
    sget v1, Lcom/powervision/gcs/utils/show/L;->JSON_INDENT:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/powervision/gcs/utils/show/L;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    sget-object v0, Lcom/powervision/gcs/utils/show/L;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x44

    .line 109
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/show/L;->printLog(C[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static m(Ljava/util/Map;)V
    .locals 6

    .line 67
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_2

    .line 68
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 p0, 0x44

    const-string v0, "[]"

    .line 70
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/show/L;->printLog(C[Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 75
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 76
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 77
    check-cast v3, Ljava/util/Map$Entry;

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/16 p0, 0x56

    .line 81
    invoke-static {p0, v2}, Lcom/powervision/gcs/utils/show/L;->printLog(C[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static m2s(Ljava/util/Map;)Ljava/lang/String;
    .locals 2

    .line 48
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    const-string v1, ""

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    return-object v1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 54
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method private static printHead(C)V
    .locals 2

    const-string v0, "\u2554\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    .line 226
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    const-string v0, "\u2551   Thread:"

    .line 227
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u2551   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    const-string v0, "\u255f\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    .line 229
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    return-void
.end method

.method private static printHunk(CLjava/lang/String;)V
    .locals 2

    const/16 v0, 0x41

    const-string v1, "lyy"

    if-eq p0, v0, :cond_5

    const/16 v0, 0x49

    if-eq p0, v0, :cond_4

    const/16 v0, 0x44

    if-eq p0, v0, :cond_3

    const/16 v0, 0x45

    if-eq p0, v0, :cond_2

    const/16 v0, 0x56

    if-eq p0, v0, :cond_1

    const/16 v0, 0x57

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_2
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_3
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_4
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_5
    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static varargs printLocation(C[Ljava/lang/String;)V
    .locals 6

    .line 238
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 240
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 241
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 242
    const-class v5, Lcom/powervision/gcs/utils/show/L;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v3, 0x3

    .line 249
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 250
    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 251
    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2551   Location:"

    .line 253
    invoke-static {p0, v4}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    const/16 v4, 0x2551

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "   ("

    .line 255
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")# "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    if-eqz p1, :cond_2

    .line 257
    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/powervision/gcs/utils/show/L;->MIDDLE_BORDER:Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p1, Lcom/powervision/gcs/utils/show/L;->BOTTOM_BORDER:Ljava/lang/String;

    :goto_2
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    return-void
.end method

.method private static varargs printLog(C[Ljava/lang/String;)V
    .locals 1

    .line 281
    invoke-static {p0}, Lcom/powervision/gcs/utils/show/L;->printHead(C)V

    .line 282
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/show/L;->printLocation(C[Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 283
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/show/L;->printMsg(C[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static varargs printMsg(C[Ljava/lang/String;)V
    .locals 5

    const-string v0, "\u2551   msg:"

    .line 267
    invoke-static {p0, v0}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    .line 268
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u2551   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "\u255a\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550"

    .line 271
    invoke-static {p0, p1}, Lcom/powervision/gcs/utils/show/L;->printHunk(CLjava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 161
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 187
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs v([Ljava/lang/String;)V
    .locals 1

    .line 135
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x56

    .line 136
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/show/L;->printLog(C[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 151
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 177
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static varargs w([Ljava/lang/String;)V
    .locals 1

    .line 125
    sget-boolean v0, Lcom/powervision/gcs/utils/show/L;->isDebug:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    .line 126
    invoke-static {v0, p0}, Lcom/powervision/gcs/utils/show/L;->printLog(C[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
