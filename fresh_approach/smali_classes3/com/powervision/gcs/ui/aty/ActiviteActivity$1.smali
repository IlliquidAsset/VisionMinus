.class Lcom/powervision/gcs/ui/aty/ActiviteActivity$1;
.super Ljava/lang/Object;
.source "ActiviteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ActiviteActivity;->initViews(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$1;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->finish()V

    return-void
.end method
