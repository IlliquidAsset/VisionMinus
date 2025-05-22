.class Lcom/univocity/parsers/common/processor/OutputValueSwitch$1;
.super Ljava/lang/Object;
.source "OutputValueSwitch.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/common/processor/OutputValueSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/processor/OutputValueSwitch;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/processor/OutputValueSwitch;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/univocity/parsers/common/processor/OutputValueSwitch$1;->this$0:Lcom/univocity/parsers/common/processor/OutputValueSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
