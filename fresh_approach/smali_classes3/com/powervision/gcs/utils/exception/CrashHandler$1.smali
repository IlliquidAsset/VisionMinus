.class Lcom/powervision/gcs/utils/exception/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/exception/CrashHandler;->getCrashReportFiles(Landroid/content/Context;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/exception/CrashHandler;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/exception/CrashHandler;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/powervision/gcs/utils/exception/CrashHandler$1;->this$0:Lcom/powervision/gcs/utils/exception/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, ".cr"

    .line 197
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
