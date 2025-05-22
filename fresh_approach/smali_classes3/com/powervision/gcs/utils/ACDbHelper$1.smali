.class Lcom/powervision/gcs/utils/ACDbHelper$1;
.super Ljava/lang/Object;
.source "ACDbHelper.java"

# interfaces
.implements Lorg/xutils/DbManager$DbUpgradeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/utils/ACDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/utils/ACDbHelper;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/utils/ACDbHelper;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/powervision/gcs/utils/ACDbHelper$1;->this$0:Lcom/powervision/gcs/utils/ACDbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgrade(Lorg/xutils/DbManager;II)V
    .locals 0

    return-void
.end method
