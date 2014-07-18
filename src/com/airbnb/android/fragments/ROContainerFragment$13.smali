.class Lcom/airbnb/android/fragments/ROContainerFragment$13;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->onSpecialOfferSent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$13;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$13;->val$userName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$13;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    sget-object v1, Lcom/airbnb/android/models/ReservationStatus;->SpecialOffer:Lcom/airbnb/android/models/ReservationStatus;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$13;->val$userName:Ljava/lang/String;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->showResponseSuccessDialog(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2300(Lcom/airbnb/android/fragments/ROContainerFragment;Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;)V

    .line 1252
    return-void
.end method
