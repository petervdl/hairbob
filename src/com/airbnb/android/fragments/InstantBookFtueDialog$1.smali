.class Lcom/airbnb/android/fragments/InstantBookFtueDialog$1;
.super Ljava/lang/Object;
.source "InstantBookFtueDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/InstantBookFtueDialog;->getStickyButtonClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/InstantBookFtueDialog;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/InstantBookFtueDialog;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/fragments/InstantBookFtueDialog$1;->this$0:Lcom/airbnb/android/fragments/InstantBookFtueDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/airbnb/android/fragments/InstantBookFtueDialog$1;->this$0:Lcom/airbnb/android/fragments/InstantBookFtueDialog;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->dismiss()V

    .line 70
    iget-object v1, p0, Lcom/airbnb/android/fragments/InstantBookFtueDialog$1;->this$0:Lcom/airbnb/android/fragments/InstantBookFtueDialog;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "req_code_confirm"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "requestCodeSingle":I
    if-lez v0, :cond_19

    .line 72
    iget-object v1, p0, Lcom/airbnb/android/fragments/InstantBookFtueDialog$1;->this$0:Lcom/airbnb/android/fragments/InstantBookFtueDialog;

    # invokes: Lcom/airbnb/android/fragments/InstantBookFtueDialog;->clickConfirm(I)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/InstantBookFtueDialog;->access$000(Lcom/airbnb/android/fragments/InstantBookFtueDialog;I)V

    .line 74
    :cond_19
    return-void
.end method
