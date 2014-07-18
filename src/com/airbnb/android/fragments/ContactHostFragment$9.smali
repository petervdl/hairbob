.class Lcom/airbnb/android/fragments/ContactHostFragment$9;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ContactHostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactHostFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 2

    .prologue
    .line 410
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$9;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$9;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # invokes: Lcom/airbnb/android/fragments/ContactHostFragment;->checkAndEnableSendButton()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$1100(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    .line 415
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 419
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 423
    return-void
.end method
