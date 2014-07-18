.class Lcom/airbnb/android/fragments/StatePickerDialogFragment$2;
.super Ljava/lang/Object;
.source "StatePickerDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/StatePickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/StatePickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/StatePickerDialogFragment;->search(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->access$200(Lcom/airbnb/android/fragments/StatePickerDialogFragment;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 162
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 157
    return-void
.end method
