.class Lcom/powervision/handheld/utils/MediaRecordManager$1;
.super Ljava/lang/Object;
.source "MediaRecordManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/utils/MediaRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/utils/MediaRecordManager;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/utils/MediaRecordManager;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/powervision/handheld/utils/MediaRecordManager$1;->this$0:Lcom/powervision/handheld/utils/MediaRecordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/powervision/handheld/utils/MediaRecordManager$1;->this$0:Lcom/powervision/handheld/utils/MediaRecordManager;

    invoke-static {v0}, Lcom/powervision/handheld/utils/MediaRecordManager;->access$000(Lcom/powervision/handheld/utils/MediaRecordManager;)V

    return-void
.end method
