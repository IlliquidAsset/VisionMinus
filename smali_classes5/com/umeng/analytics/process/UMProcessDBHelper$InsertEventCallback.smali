.class Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;
.super Ljava/lang/Object;
.source "UMProcessDBHelper.java"

# interfaces
.implements Lcom/umeng/commonsdk/utils/FileLockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/process/UMProcessDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertEventCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/process/UMProcessDBHelper;


# direct methods
.method private constructor <init>(Lcom/umeng/analytics/process/UMProcessDBHelper;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;->a:Lcom/umeng/analytics/process/UMProcessDBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/process/UMProcessDBHelper;Lcom/umeng/analytics/process/UMProcessDBHelper$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;-><init>(Lcom/umeng/analytics/process/UMProcessDBHelper;)V

    return-void
.end method


# virtual methods
.method public onFileLock(Ljava/io/File;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "ua_"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, ".db"

    .line 66
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/umeng/analytics/process/UMProcessDBHelper$InsertEventCallback;->a:Lcom/umeng/analytics/process/UMProcessDBHelper;

    check-cast p2, Lorg/json/JSONArray;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/process/UMProcessDBHelper;->insertEvents(Ljava/lang/String;Lorg/json/JSONArray;)V

    return v1
.end method
