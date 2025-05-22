.class Lcom/powervision/gcs/ui/aty/ActiviteActivity$5$1;
.super Ljava/lang/Object;
.source "ActiviteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5$1;->this$1:Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 118
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5$1;->this$1:Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ActiviteActivity$5;->this$0:Lcom/powervision/gcs/ui/aty/ActiviteActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ActiviteActivity;->doActivite()V

    return-void
.end method
