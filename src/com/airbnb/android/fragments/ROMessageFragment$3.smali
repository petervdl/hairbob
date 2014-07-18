.class Lcom/airbnb/android/fragments/ROMessageFragment$3;
.super Ljava/lang/Object;
.source "ROMessageFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROMessageFragment;->setupReplyInput(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROMessageFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROMessageFragment;)V
    .registers 2

    .prologue
    .line 306
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROMessageFragment$3;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROMessageFragment$3;->this$0:Lcom/airbnb/android/fragments/ROMessageFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROMessageFragment;->updateReplyButton()V

    .line 319
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 314
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 310
    return-void
.end method
