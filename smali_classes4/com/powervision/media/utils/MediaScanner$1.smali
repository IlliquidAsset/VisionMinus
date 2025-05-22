.class Lcom/powervision/media/utils/MediaScanner$1;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/utils/MediaScanner;->scanImage(Lcom/powervision/media/utils/MediaScanner$ScannerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/utils/MediaScanner;


# direct methods
.method constructor <init>(Lcom/powervision/media/utils/MediaScanner;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/powervision/media/utils/MediaScanner$1;->this$0:Lcom/powervision/media/utils/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 29
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 30
    invoke-static {}, Lcom/powervision/base/base/BaseApplication;->getInstanceApp()Lcom/powervision/base/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powervision/base/base/BaseApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 31
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/powervision/media/utils/MediaScanner$1;->this$0:Lcom/powervision/media/utils/MediaScanner;

    invoke-static {v1}, Lcom/powervision/media/utils/MediaScanner;->access$000(Lcom/powervision/media/utils/MediaScanner;)Lcom/powervision/media/utils/MediaScanner$ScannerListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/media/utils/MediaScanner$ScannerListener;->getImages(Landroid/database/Cursor;)V

    return-void
.end method
