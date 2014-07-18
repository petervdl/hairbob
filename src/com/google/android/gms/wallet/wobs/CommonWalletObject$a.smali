.class public final Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic akL:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->akL:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Lcom/google/android/gms/wallet/wobs/CommonWalletObject$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;-><init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;)V

    return-void
.end method


# virtual methods
.method public cw(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->akL:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->eC:Ljava/lang/String;

    return-object p0
.end method

.method public ng()Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$a;->akL:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    return-object v0
.end method
