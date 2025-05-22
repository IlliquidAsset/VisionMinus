.class Lcom/powervision/base/utils/ACDbHelper$1;
.super Ljava/lang/Object;
.source "ACDbHelper.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/ACDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/ACDbHelper;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/ACDbHelper;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/powervision/base/utils/ACDbHelper$1;->this$0:Lcom/powervision/base/utils/ACDbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .locals 0

    if-ge p2, p3, :cond_0

    .line 36
    :try_start_0
    const-class p2, Lcom/powervision/base/model/MediaModel;

    invoke-interface {p1, p2}, Lorg/xutils/DbManager;->dropTable(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
