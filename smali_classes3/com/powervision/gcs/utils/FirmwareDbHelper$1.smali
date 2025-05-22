.class Lcom/powervision/gcs/utils/FirmwareDbHelper$1;
.super Ljava/lang/Object;
.source "FirmwareDbHelper.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/FirmwareDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/FirmwareDbHelper;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/FirmwareDbHelper;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/utils/FirmwareDbHelper$1;->this$0:Lcom/powervision/gcs/utils/FirmwareDbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .locals 0

    if-ge p2, p3, :cond_0

    .line 40
    :try_start_0
    const-class p2, Lcom/powervision/gcs/model/FirmInfo;

    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->dropTable(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "\u6570\u636e\u5e93\u66f4\u65b0\u5931\u8d25"

    .line 43
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/gcs/utils/show/L;->i([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
