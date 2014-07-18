.class Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;
.super Ljava/lang/Object;
.source "MultilineBadgedTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->update(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

.field final synthetic val$notificationCount:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;I)V
    .registers 3

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    iput p2, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->val$notificationCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 9

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 48
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$000(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 49
    .local v3, "start":I
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$000(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 51
    .local v1, "end":I
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$000(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/MiscUtils;->stripString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "displayed":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$000(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/MiscUtils;->stripString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "remainder":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstLine:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$100(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondLine:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$200(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstLine:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$100(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$000(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_b9

    .line 58
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondLine:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$200(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondLine:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$200(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstBadge:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$300(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondBadge:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$400(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    iget v5, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->val$notificationCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondBadge:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$400(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_a6
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFullText:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$000(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    invoke-virtual {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/airbnb/android/utils/MiscUtils;->apiRemoveGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 72
    return-void

    .line 64
    :cond_b9
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondLine:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$200(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstBadge:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$300(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    iget v5, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->val$notificationCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mFirstBadge:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$300(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v4, p0, Lcom/airbnb/android/views/groups/MultilineBadgedTextView$1;->this$0:Lcom/airbnb/android/views/groups/MultilineBadgedTextView;

    # getter for: Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->mSecondBadge:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/airbnb/android/views/groups/MultilineBadgedTextView;->access$400(Lcom/airbnb/android/views/groups/MultilineBadgedTextView;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a6
.end method
