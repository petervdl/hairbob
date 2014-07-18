.class Lcom/airbnb/android/fragments/EmailSignUpFragment$2;
.super Ljava/lang/Object;
.source "EmailSignUpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EmailSignUpFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$2;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/EmailSignUpFragment$2;->this$0:Lcom/airbnb/android/fragments/EmailSignUpFragment;

    # invokes: Lcom/airbnb/android/fragments/EmailSignUpFragment;->signUp()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/EmailSignUpFragment;->access$100(Lcom/airbnb/android/fragments/EmailSignUpFragment;)V

    .line 127
    return-void
.end method
