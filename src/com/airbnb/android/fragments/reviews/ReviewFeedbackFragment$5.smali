.class Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$5;
.super Ljava/lang/Object;
.source "ReviewFeedbackFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->initializeViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V
    .registers 2

    .prologue
    .line 316
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$5;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 9
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 329
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "content":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$5;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mNextButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$600(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/Button;

    move-result-object v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    move v3, v4

    :goto_17
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    iget-object v6, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$5;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_37

    move v3, v5

    :goto_23
    # invokes: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->updateWordsLeft(I)Z
    invoke-static {v6, v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$700(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;I)Z

    move-result v0

    .line 334
    .local v0, "canKeepTyping":Z
    if-eqz v0, :cond_40

    new-array v2, v5, [Landroid/text/InputFilter;

    .line 336
    .local v2, "filters":[Landroid/text/InputFilter;
    :goto_2b
    iget-object v3, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$5;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mPublicFeedbackEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$300(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 337
    return-void

    .end local v0    # "canKeepTyping":Z
    .end local v2    # "filters":[Landroid/text/InputFilter;
    :cond_35
    move v3, v5

    .line 330
    goto :goto_17

    .line 331
    :cond_37
    const-string/jumbo v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    goto :goto_23

    .line 334
    .restart local v0    # "canKeepTyping":Z
    :cond_40
    new-array v2, v4, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    goto :goto_2b
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 325
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 320
    return-void
.end method
