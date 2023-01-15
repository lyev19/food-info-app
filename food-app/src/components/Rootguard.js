import AuthGaurd from "./Authguard";
import React from "react";

const RootGaurd = ({ children }) => {
  return <AuthGaurd>{children}</AuthGaurd>;
};

export default RootGaurd;