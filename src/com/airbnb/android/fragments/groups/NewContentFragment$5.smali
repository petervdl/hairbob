.class Lcom/airbnb/android/fragments/groups/NewContentFragment$5;
.super Ljava/lang/Object;
.source "NewContentFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/NewContentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V
    .registers 2

    .prologue
    .line 292
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 309
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 303
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/NewContentFragment;->hasValidContent()Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$600(Lcom/airbnb/android/fragments/groups/NewContentFragment;)Z

    move-result v1

    # invokes: Lcom/airbnb/android/fragments/groups/NewContentFragment;->updateSubmitButton(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$700(Lcom/airbnb/android/fragments/groups/NewContentFragment;Z)V

    .line 296
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/NewContentFragment$5;->this$0:Lcom/airbnb/android/fragments/groups/NewContentFragment;

    # invokes: Lcom/airbnb/android/fragments/groups/NewContentFragment;->setRemainingTitleCharacters()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/groups/NewContentFragment;->access$500(Lcom/airbnb/android/fragments/groups/NewContentFragment;)V

    .line 297
    return-void
.end method
