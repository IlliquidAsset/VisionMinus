.class Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$2;
.super Ljava/lang/Object;
.source "LinkSettingFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 p1, 0x8

    const/4 p2, 0x1

    if-nez p3, :cond_0

    .line 142
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p3

    const-string p4, "10"

    invoke-virtual {p3, p1, p4, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    goto :goto_0

    :cond_0
    if-ne p3, p2, :cond_1

    .line 144
    iget-object p3, p0, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;

    invoke-static {p3}, Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;->access$200(Lcom/powervision/aircraft/ui/fragment/LinkSettingFragment;)Lcom/powervision/natives/PVSDK_AP03_API;

    move-result-object p3

    const-string p4, "20"

    invoke-virtual {p3, p1, p4, p2}, Lcom/powervision/natives/PVSDK_AP03_API;->setGetOperation(ILjava/lang/String;I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
