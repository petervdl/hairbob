.class Lcom/airbnb/android/fragments/ZenDialog$3;
.super Ljava/lang/Object;
.source "ZenDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ZenDialog;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ZenDialog;)V
    .registers 2

    .prologue
    .line 188
    iput-object p1, p0, Lcom/airbnb/android/fragments/ZenDialog$3;->this$0:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v1, p0, Lcom/airbnb/android/fragments/ZenDialog$3;->this$0:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog;->dismiss()V

    .line 193
    iget-object v1, p0, Lcom/airbnb/android/fragments/ZenDialog$3;->this$0:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "req_code_dual_positive_button"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "requestCodeRight":I
    if-lez v0, :cond_19

    .line 195
    iget-object v1, p0, Lcom/airbnb/android/fragments/ZenDialog$3;->this$0:Lcom/airbnb/android/fragments/ZenDialog;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog;->clickRightButton(I)V

    .line 197
    :cond_19
    return-void
.end method