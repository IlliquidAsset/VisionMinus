.class Lcom/powervision/gcs/utils/ImageScanner$1;
.super Ljava/lang/Object;
.source "ImageScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/utils/ImageScanner;->scanImages(Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/ImageScanner;

.field final synthetic val$callback:Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ImageScanner;Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/utils/ImageScanner$1;->this$0:Lcom/powervision/gcs/utils/ImageScanner;

    iput-object p2, p0, Lcom/powervision/gcs/utils/ImageScanner$1;->val$callback:Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 37
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 38
    iget-object v0, p0, Lcom/powervision/gcs/utils/ImageScanner$1;->this$0:Lcom/powervision/gcs/utils/ImageScanner;

    invoke-static {v0}, Lcom/powervision/gcs/utils/ImageScanner;->access$000(Lcom/powervision/gcs/utils/ImageScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 39
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/powervision/gcs/utils/ImageScanner$1;->val$callback:Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;

    invoke-interface {v1, v0}, Lcom/powervision/gcs/utils/ImageScanner$ScanCompleteCallBack;->scanComplete(Landroid/database/Cursor;)V

    return-void
.end method
