.class public final synthetic Lcom/lewis/edit/widgets/-$$Lambda$BackgroundMusicLayout$VOAiq3KjCCj0CqjXoHN1fpBC0GU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/lewis/edit/widgets/EditCenterSeekBarView$OnSeekBarFinishedListener;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/widgets/BackgroundMusicLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/widgets/BackgroundMusicLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/widgets/-$$Lambda$BackgroundMusicLayout$VOAiq3KjCCj0CqjXoHN1fpBC0GU;->f$0:Lcom/lewis/edit/widgets/BackgroundMusicLayout;

    return-void
.end method


# virtual methods
.method public final onFinished(I)V
    .locals 1

    iget-object v0, p0, Lcom/lewis/edit/widgets/-$$Lambda$BackgroundMusicLayout$VOAiq3KjCCj0CqjXoHN1fpBC0GU;->f$0:Lcom/lewis/edit/widgets/BackgroundMusicLayout;

    invoke-virtual {v0, p1}, Lcom/lewis/edit/widgets/BackgroundMusicLayout;->lambda$setListener$1$BackgroundMusicLayout(I)V

    return-void
.end method
