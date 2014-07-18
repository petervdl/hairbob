.class Lcom/airbnb/android/fragments/CountryPickerDialogFragment$2;
.super Ljava/lang/Object;
.source "CountryPickerDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)V
    .registers 2

    .prologue
    .line 121
    iput-object p1, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->search(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->access$200(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 131
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 126
    return-void
.end method
