.class Lme/jingbin/library/stickyview/StickyHeaderHandler$2;
.super Ljava/lang/Object;
.source "StickyHeaderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/jingbin/library/stickyview/StickyHeaderHandler;->updateHeaderState(ILjava/util/Map;Lme/jingbin/library/stickyview/ViewHolderFactory;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;


# direct methods
.method constructor <init>(Lme/jingbin/library/stickyview/StickyHeaderHandler;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$2;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 90
    iget-object v0, p0, Lme/jingbin/library/stickyview/StickyHeaderHandler$2;->this$0:Lme/jingbin/library/stickyview/StickyHeaderHandler;

    invoke-static {v0}, Lme/jingbin/library/stickyview/StickyHeaderHandler;->access$200(Lme/jingbin/library/stickyview/StickyHeaderHandler;)V

    return-void
.end method
