.class public final synthetic Lcom/powervision/base/base/-$$Lambda$BaseActivity$aSk7tWxL278wIpCjIubc0wguT6I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/base/-$$Lambda$BaseActivity$aSk7tWxL278wIpCjIubc0wguT6I;->f$0:Landroid/view/View;

    iput p2, p0, Lcom/powervision/base/base/-$$Lambda$BaseActivity$aSk7tWxL278wIpCjIubc0wguT6I;->f$1:I

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/base/base/-$$Lambda$BaseActivity$aSk7tWxL278wIpCjIubc0wguT6I;->f$0:Landroid/view/View;

    iget v1, p0, Lcom/powervision/base/base/-$$Lambda$BaseActivity$aSk7tWxL278wIpCjIubc0wguT6I;->f$1:I

    invoke-static {v0, v1, p1}, Lcom/powervision/base/base/BaseActivity;->lambda$systemFullScreen$0(Landroid/view/View;II)V

    return-void
.end method
