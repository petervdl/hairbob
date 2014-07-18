.class Lcom/airbnb/android/fragments/StatePickerDialogFragment$3;
.super Ljava/lang/Object;
.source "StatePickerDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 181
    iput-object p1, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/StatePickerDialogFragment;->mSelectedItem:I
    invoke-static {v0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->access$300(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)I

    move-result v0

    if-ltz v0, :cond_17

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/StatePickerDialogFragment;->countryListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->access$400(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/StatePickerDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/StatePickerDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/StatePickerDialogFragment;->mSelectedItem:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/StatePickerDialogFragment;->access$300(Lcom/airbnb/android/fragments/StatePickerDialogFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 187
    :cond_17
    return-void
.end method
