.class Lcom/powervision/media/utils/VideoScanner$1;
.super Ljava/lang/Object;
.source "VideoScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/utils/VideoScanner;->scanVideos(Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/utils/VideoScanner;

.field final synthetic val$callback:Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;


# direct methods
.method constructor <init>(Lcom/powervision/media/utils/VideoScanner;Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/powervision/media/utils/VideoScanner$1;->this$0:Lcom/powervision/media/utils/VideoScanner;

    iput-object p2, p0, Lcom/powervision/media/utils/VideoScanner$1;->val$callback:Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 27
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 28
    iget-object v0, p0, Lcom/powervision/media/utils/VideoScanner$1;->this$0:Lcom/powervision/media/utils/VideoScanner;

    invoke-static {v0}, Lcom/powervision/media/utils/VideoScanner;->access$000(Lcom/powervision/media/utils/VideoScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/powervision/media/utils/VideoScanner$1;->val$callback:Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;

    invoke-interface {v1, v0}, Lcom/powervision/media/utils/VideoScanner$ScanCompleteCallBack;->scanComplete(Landroid/database/Cursor;)V

    return-void
.end method
