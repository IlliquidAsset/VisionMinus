.class public final synthetic Lcom/powervision/base/utils/-$$Lambda$NavigationBarUtil$de43-qpv9yX8VLzIJFWNqigt33Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/base/utils/-$$Lambda$NavigationBarUtil$de43-qpv9yX8VLzIJFWNqigt33Q;->f$0:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/base/utils/-$$Lambda$NavigationBarUtil$de43-qpv9yX8VLzIJFWNqigt33Q;->f$0:Landroid/view/Window;

    invoke-static {v0, p1}, Lcom/powervision/base/utils/NavigationBarUtil;->lambda$hideNavigationBar$0(Landroid/view/Window;I)V

    return-void
.end method
