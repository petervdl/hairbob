.class Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;
.super Ljava/lang/Object;
.source "ShakeFeedbackHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$description:Landroid/widget/EditText;

.field final synthetic val$title:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 4

    .prologue
    .line 120
    iput-object p1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->this$0:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    iput-object p2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->val$title:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->val$description:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    iget-object v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->val$title:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "titleStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->val$description:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "descStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->this$0:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    # getter for: Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->access$200(Lcom/airbnb/android/utils/ShakeFeedbackHelper;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->val$title:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 130
    iget-object v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;->val$title:Landroid/widget/EditText;

    new-instance v3, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2$1;-><init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method
