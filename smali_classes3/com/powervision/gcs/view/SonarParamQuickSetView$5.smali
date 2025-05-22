.class Lcom/powervision/gcs/view/SonarParamQuickSetView$5;
.super Ljava/lang/Object;
.source "SonarParamQuickSetView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/view/SonarParamQuickSetView;->setIsMute(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/view/SonarParamQuickSetView;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/powervision/gcs/view/SonarParamQuickSetView$5;->this$0:Lcom/powervision/gcs/view/SonarParamQuickSetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 205
    sput-boolean p2, Lcom/powervision/gcs/utils/SonarStateHelper;->mIsMute:Z

    return-void
.end method
