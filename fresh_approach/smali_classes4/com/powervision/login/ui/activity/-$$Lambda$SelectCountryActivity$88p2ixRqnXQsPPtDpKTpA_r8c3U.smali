.class public final synthetic Lcom/powervision/login/ui/activity/-$$Lambda$SelectCountryActivity$88p2ixRqnXQsPPtDpKTpA_r8c3U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lme/yokeyword/indexablerv/IndexableAdapter$OnItemContentClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/login/ui/activity/SelectCountryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/login/ui/activity/-$$Lambda$SelectCountryActivity$88p2ixRqnXQsPPtDpKTpA_r8c3U;->f$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/login/ui/activity/-$$Lambda$SelectCountryActivity$88p2ixRqnXQsPPtDpKTpA_r8c3U;->f$0:Lcom/powervision/login/ui/activity/SelectCountryActivity;

    check-cast p4, Lcom/powervision/login/model/entity/UserEntity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powervision/login/ui/activity/SelectCountryActivity;->lambda$setListener$0$SelectCountryActivity(Landroid/view/View;IILcom/powervision/login/model/entity/UserEntity;)V

    return-void
.end method
