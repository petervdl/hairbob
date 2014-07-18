.class Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$3;
.super Ljava/lang/Object;
.source "EditProfileTextFieldFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->exit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

.field final synthetic val$save:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Z)V
    .registers 3

    .prologue
    .line 175
    iput-object p1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$3;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$3;->val$save:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$3;->this$0:Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;

    iget-boolean v1, p0, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment$3;->val$save:Z

    # invokes: Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->saveValueOrGoBack(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;->access$100(Lcom/airbnb/android/fragments/EditProfileTextFieldFragment;Z)V

    .line 180
    return-void
.end method
