.class Lme/jingbin/library/ByRecyclerView$8;
.super Lme/jingbin/library/AppBarStateChangeListener;
.source "ByRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/ByRecyclerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/ByRecyclerView;


# direct methods
.method constructor <init>(Lme/jingbin/library/ByRecyclerView;)V
    .locals 0

    .line 841
    iput-object p1, p0, Lme/jingbin/library/ByRecyclerView$8;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-direct {p0}, Lme/jingbin/library/AppBarStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lme/jingbin/library/AppBarStateChangeListener$State;)V
    .locals 0

    .line 844
    iget-object p1, p0, Lme/jingbin/library/ByRecyclerView$8;->this$0:Lme/jingbin/library/ByRecyclerView;

    invoke-static {p1, p2}, Lme/jingbin/library/ByRecyclerView;->access$1702(Lme/jingbin/library/ByRecyclerView;Lme/jingbin/library/AppBarStateChangeListener$State;)Lme/jingbin/library/AppBarStateChangeListener$State;

    return-void
.end method
