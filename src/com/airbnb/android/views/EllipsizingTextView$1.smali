.class Lcom/airbnb/android/views/EllipsizingTextView$1;
.super Ljava/lang/Object;
.source "EllipsizingTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/EllipsizingTextView;->ellipsizeText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/EllipsizingTextView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/EllipsizingTextView;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/airbnb/android/views/EllipsizingTextView$1;->this$0:Lcom/airbnb/android/views/EllipsizingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 95
    iget-object v3, p0, Lcom/airbnb/android/views/EllipsizingTextView$1;->this$0:Lcom/airbnb/android/views/EllipsizingTextView;

    # getter for: Lcom/airbnb/android/views/EllipsizingTextView;->maxLines:I
    invoke-static {v3}, Lcom/airbnb/android/views/EllipsizingTextView;->access$000(Lcom/airbnb/android/views/EllipsizingTextView;)I

    move-result v3

    if-lez v3, :cond_14

    iget-object v3, p0, Lcom/airbnb/android/views/EllipsizingTextView$1;->this$0:Lcom/airbnb/android/views/EllipsizingTextView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 106
    :cond_14
    :goto_14
    return-void

    .line 99
    :cond_15
    iget-object v3, p0, Lcom/airbnb/android/views/EllipsizingTextView$1;->this$0:Lcom/airbnb/android/views/EllipsizingTextView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/EllipsizingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 100
    .local v1, "layout":Landroid/text/Layout;
    iget-object v3, p0, Lcom/airbnb/android/views/EllipsizingTextView$1;->this$0:Lcom/airbnb/android/views/EllipsizingTextView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/EllipsizingTextView;->getMaxLines()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 101
    .local v2, "visibleLines":I
    iget-object v3, p0, Lcom/airbnb/android/views/EllipsizingTextView$1;->this$0:Lcom/airbnb/android/views/EllipsizingTextView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/EllipsizingTextView;->getMaxLines()I

    move-result v3

    if-ne v2, v3, :cond_14

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_14

    .line 102
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    add-int v0, v3, v4

    .line 103
    .local v0, "ellipsisIndex":I
    iget-object v3, p0, Lcom/airbnb/android/views/EllipsizingTextView$1;->this$0:Lcom/airbnb/android/views/EllipsizingTextView;

    const/4 v4, 0x1

    # setter for: Lcom/airbnb/android/views/EllipsizingTextView;->dontUpdate:Z
    invoke-static {v3, v4}, Lcom/airbnb/android/views/EllipsizingTextView;->access$102(Lcom/airbnb/android/views/EllipsizingTextView;Z)Z

    .line 104
    iget-object v3, p0, Lcom/airbnb/android/views/EllipsizingTextView$1;->this$0:Lcom/airbnb/android/views/EllipsizingTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/airbnb/android/views/EllipsizingTextView$1;->this$0:Lcom/airbnb/android/views/EllipsizingTextView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v5

    const v6, 0x7f0e01a4

    invoke-virtual {v5, v6}, Lcom/airbnb/android/AirbnbApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/EllipsizingTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14
.end method
