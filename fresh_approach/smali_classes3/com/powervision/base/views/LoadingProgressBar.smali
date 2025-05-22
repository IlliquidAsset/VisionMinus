.class public Lcom/powervision/base/views/LoadingProgressBar;
.super Landroid/app/Dialog;
.source "LoadingProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private failDismissListener:Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;

.field private mText:Landroid/widget/TextView;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    sget v0, Lcom/powervision/base/R$style;->BaseDialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    iput-object p1, p0, Lcom/powervision/base/views/LoadingProgressBar;->context:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Lcom/powervision/base/views/LoadingProgressBar;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/powervision/base/views/LoadingProgressBar;->mWindow:Landroid/view/Window;

    .line 32
    sget p1, Lcom/powervision/base/R$layout;->loading_progressbar_view:I

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/LoadingProgressBar;->setContentView(I)V

    .line 33
    invoke-direct {p0}, Lcom/powervision/base/views/LoadingProgressBar;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 37
    sget v0, Lcom/powervision/base/R$id;->progress_message:I

    invoke-virtual {p0, v0}, Lcom/powervision/base/views/LoadingProgressBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/powervision/base/views/LoadingProgressBar;->mText:Landroid/widget/TextView;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Lcom/powervision/base/views/LoadingProgressBar;->setCancelable(Z)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/powervision/base/views/LoadingProgressBar;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public setFailDismissListener(Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/powervision/base/views/LoadingProgressBar;->failDismissListener:Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;

    return-void
.end method

.method public setText(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/powervision/base/views/LoadingProgressBar;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/powervision/base/views/LoadingProgressBar;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/powervision/base/views/LoadingProgressBar;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/powervision/base/views/LoadingProgressBar;->mText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public show(J)V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/powervision/base/views/LoadingProgressBar$1;

    invoke-direct {v1, p0}, Lcom/powervision/base/views/LoadingProgressBar$1;-><init>(Lcom/powervision/base/views/LoadingProgressBar;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public show(JLcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/powervision/base/views/LoadingProgressBar;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    invoke-static {v0}, Lcom/powervision/base/utils/NavigationBarUtil;->focusNotAle(Landroid/view/Window;)V

    .line 65
    invoke-virtual {p0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/powervision/base/views/LoadingProgressBar$2;

    invoke-direct {v1, p0, p3}, Lcom/powervision/base/views/LoadingProgressBar$2;-><init>(Lcom/powervision/base/views/LoadingProgressBar;Lcom/powervision/base/views/LoadingProgressBar$OnFailDismissListener;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    invoke-virtual {p0}, Lcom/powervision/base/views/LoadingProgressBar;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lcom/powervision/base/utils/NavigationBarUtil;->clearFocusNotAle(Landroid/view/Window;)V

    return-void
.end method

.method public show(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/powervision/base/views/LoadingProgressBar;->mWindow:Landroid/view/Window;

    if-nez p1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p1}, Lcom/powervision/base/utils/NavigationBarUtil;->focusNotAle(Landroid/view/Window;)V

    .line 93
    invoke-virtual {p0}, Lcom/powervision/base/views/LoadingProgressBar;->show()V

    .line 94
    iget-object p1, p0, Lcom/powervision/base/views/LoadingProgressBar;->mWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/powervision/base/utils/NavigationBarUtil;->hideNavigationBar(Landroid/view/Window;)V

    .line 95
    iget-object p1, p0, Lcom/powervision/base/views/LoadingProgressBar;->mWindow:Landroid/view/Window;

    invoke-static {p1}, Lcom/powervision/base/utils/NavigationBarUtil;->clearFocusNotAle(Landroid/view/Window;)V

    :goto_0
    return-void
.end method
