.class Lcom/airbnb/android/fragments/AddCreditCardFragment$1;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AddCreditCardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$1;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$1;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->showCountrySelector()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$000(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    .line 109
    return-void
.end method