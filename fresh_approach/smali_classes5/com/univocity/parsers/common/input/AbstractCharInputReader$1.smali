.class Lcom/univocity/parsers/common/input/AbstractCharInputReader$1;
.super Lcom/univocity/parsers/common/input/LineSeparatorDetector;
.source "AbstractCharInputReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/univocity/parsers/common/input/AbstractCharInputReader;->submitLineSeparatorDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/univocity/parsers/common/input/AbstractCharInputReader;


# direct methods
.method constructor <init>(Lcom/univocity/parsers/common/input/AbstractCharInputReader;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader$1;->this$0:Lcom/univocity/parsers/common/input/AbstractCharInputReader;

    invoke-direct {p0}, Lcom/univocity/parsers/common/input/LineSeparatorDetector;-><init>()V

    return-void
.end method


# virtual methods
.method protected apply(CC)V
    .locals 2

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader$1;->this$0:Lcom/univocity/parsers/common/input/AbstractCharInputReader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->access$002(Lcom/univocity/parsers/common/input/AbstractCharInputReader;Z)Z

    .line 113
    iget-object v0, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader$1;->this$0:Lcom/univocity/parsers/common/input/AbstractCharInputReader;

    invoke-static {v0, p1}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->access$102(Lcom/univocity/parsers/common/input/AbstractCharInputReader;C)C

    .line 114
    iget-object p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader$1;->this$0:Lcom/univocity/parsers/common/input/AbstractCharInputReader;

    invoke-static {p1, p2}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->access$202(Lcom/univocity/parsers/common/input/AbstractCharInputReader;C)C

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/univocity/parsers/common/input/AbstractCharInputReader$1;->this$0:Lcom/univocity/parsers/common/input/AbstractCharInputReader;

    invoke-static {}, Lcom/univocity/parsers/common/Format;->getSystemLineSeparator()[C

    move-result-object p2

    invoke-static {p1, p2}, Lcom/univocity/parsers/common/input/AbstractCharInputReader;->access$300(Lcom/univocity/parsers/common/input/AbstractCharInputReader;[C)V

    :goto_0
    return-void
.end method
