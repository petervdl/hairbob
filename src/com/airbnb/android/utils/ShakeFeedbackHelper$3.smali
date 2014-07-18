.class Lcom/airbnb/android/utils/ShakeFeedbackHelper$3;
.super Ljava/lang/Object;
.source "ShakeFeedbackHelper.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/ShakeFeedbackHelper;->showFeedbackDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

.field final synthetic val$sendButton:Landroid/widget/Button;

.field final synthetic val$title:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper;Landroid/widget/EditText;Landroid/widget/Button;)V
    .registers 4

    .prologue
    .line 144
    iput-object p1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$3;->this$0:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    iput-object p2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$3;->val$title:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$3;->val$sendButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$3;->val$title:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_13

    .line 158
    const/4 v0, 0x1

    .line 160
    :cond_13
    iget-object v1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$3;->val$sendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 147
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 151
    return-void
.end method
