.class Lcom/airbnb/android/fragments/ContactHostFragment$4;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactHostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 212
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$4;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$4;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/fragments/ContactHostFragment;->onInputTextFocus(Z)V

    .line 217
    return-void
.end method
