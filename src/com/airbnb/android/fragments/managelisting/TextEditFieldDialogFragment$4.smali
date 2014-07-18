.class Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;
.super Ljava/lang/Object;
.source "TextEditFieldDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 8
    .param p1, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    .line 231
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mCharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    move-result-object v2

    sget-object v4, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->CharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    if-ne v2, v4, :cond_31

    .line 232
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mMax:I
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 233
    .local v1, "num":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextRemaining:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$600(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    const v4, 0x7f0d001b

    # invokes: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getSpannableString(II)Landroid/text/Spannable;
    invoke-static {v3, v1, v4}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;II)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_30
    :goto_30
    return-void

    .line 234
    .end local v1    # "num":I
    :cond_31
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mCharacterMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    move-result-object v2

    sget-object v4, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;->WordMode:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$TooltipMode;

    if-ne v2, v4, :cond_91

    .line 235
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mMax:I
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$400(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)I

    move-result v4

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_78

    move v2, v3

    :goto_56
    sub-int v1, v4, v2

    .line 236
    .restart local v1    # "num":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextRemaining:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$600(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    if-gez v1, :cond_8f

    :goto_62
    const v5, 0x7f0d001c

    # invokes: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getSpannableString(II)Landroid/text/Spannable;
    invoke-static {v4, v3, v5}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;II)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    if-gez v1, :cond_30

    .line 238
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 239
    .local v0, "length":I
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v2, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_30

    .line 235
    .end local v0    # "length":I
    .end local v1    # "num":I
    :cond_78
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "\\s+"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    goto :goto_56

    .restart local v1    # "num":I
    :cond_8f
    move v3, v1

    .line 236
    goto :goto_62

    .line 242
    .end local v1    # "num":I
    :cond_91
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ba

    move v1, v3

    .line 243
    .restart local v1    # "num":I
    :goto_a6
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mTextRemaining:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$600(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    const v4, 0x7f0d001d

    # invokes: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->getSpannableString(II)Landroid/text/Spannable;
    invoke-static {v3, v1, v4}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;II)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_30

    .line 242
    .end local v1    # "num":I
    :cond_ba
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->mEditibleField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    goto :goto_a6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 249
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 253
    return-void
.end method
